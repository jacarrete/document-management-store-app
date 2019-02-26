package uk.gov.hmcts.dm.repository;

import org.springframework.beans.factory.ListableBeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.support.Repositories;
import org.springframework.stereotype.Component;
import uk.gov.hmcts.dm.exception.RepositoryCouldNotBeFoundException;

import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Optional;

@Component
public class RepositoryFinder {

    @Autowired
    private ListableBeanFactory listableBeanFactory;

    public CrudRepository<Object, Serializable> find(@NotNull String domainClassName) {
        try {
            return this.find(Class.forName(domainClassName));
        } catch (ClassNotFoundException e) {
            throw new RepositoryCouldNotBeFoundException("Could not find a Repository for Domain class: " + domainClassName);
        }
    }

    @SuppressWarnings(value = "unchecked")
    public CrudRepository<Object, Serializable> find(@NotNull Class<?> domainClass) {
        Repositories repositories = new Repositories(listableBeanFactory);

        Iterator<Class<?>> it = repositories.iterator();
        while (it.hasNext()) {
            Optional<Object> repository = repositories.getRepositoryFor(domainClass);
            if (repository.isPresent() && repository.get() instanceof CrudRepository) {
                return (CrudRepository<Object, Serializable>)repository.get();
            }
        }

        return null;
    }

}
