package io.spring.cloud.samples.fortuneteller.fortuneservice.repositories;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import io.spring.cloud.samples.fortuneteller.fortuneservice.domain.Fortune;

public interface FortuneRepository extends PagingAndSortingRepository<Fortune, Long> {

	@Query("select fortune from Fortune fortune order by RAND()")
	public List<Fortune> randomFortunes(Pageable pageable);
}
